import mongoose from "mongoose";

const staffSchema = new mongoose.Schema(
  {
    username: { type: String, required: true, unique: true },
    password: { type: String, required: true },
    fullName: { type: String, required: true },
    role: {
      type: String,
      enum: ["admin", "officer", "warden"],
      default: "officer",
    },
  },
  { timestamps: true }
);

export default mongoose.model("Staff", staffSchema);